  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                  
.target:                               #        0     0      OPC=<label>             
  vmulpd %xmm2, %xmm1, %xmm3           #  1     0     4      OPC=vmulpd_xmm_xmm_xmm  
  pandn %xmm1, %xmm1                   #  2     0x4   4      OPC=pandn_xmm_xmm       
  callq .move_128_64_xmm3_xmm10_xmm11  #  3     0x8   5      OPC=callq_label         
  callq .move_byte_11_of_ymm1_to_r9b   #  4     0xd   5      OPC=callq_label         
  callq .move_r9b_to_byte_12_of_ymm1   #  5     0x12  5      OPC=callq_label         
  addpd %xmm11, %xmm1                  #  6     0x17  5      OPC=addpd_xmm_xmm       
  retq                                 #  7     0x1c  1      OPC=retq                
                                                                                     
.size target, .-target
