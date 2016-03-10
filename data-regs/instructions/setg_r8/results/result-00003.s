  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                     #  Line  RIP   Bytes  Opcode           
.target:                   #        0     0      OPC=<label>      
  setng %dl                #  1     0     3      OPC=setng_r8     
  callq .read_zf_into_rbx  #  2     0x3   5      OPC=callq_label  
  movb %dl, %bh            #  3     0x8   2      OPC=movb_rh_r8   
  decw %bx                 #  4     0xa   3      OPC=decw_r16     
  callq .read_sf_into_rbx  #  5     0xd   5      OPC=callq_label  
  retq                     #  6     0x12  1      OPC=retq         
                                                                  
.size target, .-target
