  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                               #  Line  RIP   Bytes  Opcode                       
.target:                             #        0     0      OPC=<label>                  
  callq .move_128_064_xmm2_r8_r9     #  1     0     5      OPC=callq_label              
  cvtsi2sdl %r8d, %xmm1              #  2     0x5   5      OPC=cvtsi2sdl_xmm_r32        
  callq .move_r8b_to_byte_8_of_ymm1  #  3     0xa   5      OPC=callq_label              
  vfmadd231ss %xmm1, %xmm1, %xmm1    #  4     0xf   5      OPC=vfmadd231ss_xmm_xmm_xmm  
  movd %r8d, %xmm1                   #  5     0x14  5      OPC=movd_xmm_r32             
  callq .move_064_128_r8_r9_xmm2     #  6     0x19  5      OPC=callq_label              
  retq                               #  7     0x1e  1      OPC=retq                     
                                                                                        
.size target, .-target
