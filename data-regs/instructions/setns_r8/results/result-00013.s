  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                     #  Line  RIP  Bytes  Opcode           
.target:                   #        0    0      OPC=<label>      
  callq .read_sf_into_rbx  #  1     0    5      OPC=callq_label  
  shlb $0x1, %bl           #  2     0x5  2      OPC=shlb_r8_one  
  callq .read_zf_into_rbx  #  3     0x7  5      OPC=callq_label  
  retq                     #  4     0xc  1      OPC=retq         
                                                                 
.size target, .-target
