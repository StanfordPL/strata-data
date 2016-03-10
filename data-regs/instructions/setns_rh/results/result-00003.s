  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                     #  Line  RIP   Bytes  Opcode               
.target:                   #        0     0      OPC=<label>          
  callq .read_sf_into_rbx  #  1     0     5      OPC=callq_label      
  popcntl %ebx, %eax       #  2     0x5   4      OPC=popcntl_r32_r32  
  cltq                     #  3     0x9   2      OPC=cltq             
  callq .read_zf_into_rbx  #  4     0xb   5      OPC=callq_label      
  xorb %bl, %ah            #  5     0x10  2      OPC=xorb_rh_r8       
  retq                     #  6     0x12  1      OPC=retq             
                                                                      
.size target, .-target
