  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                     #  Line  RIP   Bytes  Opcode           
.target:                   #        0     0      OPC=<label>      
  setb %dh                 #  1     0     3      OPC=setb_rh      
  callq .read_zf_into_rcx  #  2     0x3   5      OPC=callq_label  
  shlb $0x1, %dh           #  3     0x8   2      OPC=shlb_rh_one  
  xorb %dh, %cl            #  4     0xa   2      OPC=xorb_r8_rh   
  callq .read_zf_into_rbx  #  5     0xc   5      OPC=callq_label  
  retq                     #  6     0x11  1      OPC=retq         
                                                                  
.size target, .-target
