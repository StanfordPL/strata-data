  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                               #  Line  RIP   Bytes  Opcode                       
.target:                             #        0     0      OPC=<label>                  
  callq .move_128_064_xmm3_r10_r11   #  1     0     5      OPC=callq_label              
  callq .move_128_064_xmm2_r8_r9     #  2     0x5   5      OPC=callq_label              
  callq .move_128_64_xmm3_xmm8_xmm9  #  3     0xa   5      OPC=callq_label              
  vrcpps %xmm9, %xmm1                #  4     0xf   5      OPC=vrcpps_xmm_xmm           
  xorq %r10, %r8                     #  5     0x14  3      OPC=xorq_r64_r64             
  xorq %r11, %r9                     #  6     0x17  3      OPC=xorq_r64_r64             
  vfmadd132pd %ymm1, %ymm1, %ymm1    #  7     0x1a  5      OPC=vfmadd132pd_ymm_ymm_ymm  
  callq .move_064_128_r8_r9_xmm1     #  8     0x1f  5      OPC=callq_label              
  retq                               #  9     0x24  1      OPC=retq                     
                                                                                        
.size target, .-target
