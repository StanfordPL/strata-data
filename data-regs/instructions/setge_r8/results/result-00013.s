  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                     #  Line  RIP   Bytes  Opcode           
.target:                   #        0     0      OPC=<label>      
  callq .read_of_into_rbx  #  1     0     5      OPC=callq_label  
  setnge %r13b             #  2     0x5   4      OPC=setnge_r8    
  shlb $0x1, %r13b         #  3     0x9   3      OPC=shlb_r8_one  
  callq .read_pf_into_rcx  #  4     0xc   5      OPC=callq_label  
  xchgb %bl, %cl           #  5     0x11  2      OPC=xchgb_r8_r8  
  retq                     #  6     0x13  1      OPC=retq         
                                                                  
.size target, .-target
