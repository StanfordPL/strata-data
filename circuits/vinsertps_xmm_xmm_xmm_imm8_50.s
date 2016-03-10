  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                       
.target:                                          #        0     0      OPC=<label>                  
  callq .move_128_032_xmm2_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label              
  movshdup %xmm11, %xmm9                          #  2     0x5   5      OPC=movshdup_xmm_xmm         
  vfmadd231sd %xmm3, %xmm9, %xmm1                 #  3     0xa   5      OPC=vfmadd231sd_xmm_xmm_xmm  
  vmovq %xmm3, %xmm11                             #  4     0xf   4      OPC=vmovq_xmm_xmm            
  callq .move_032_128_xmm8_xmm9_xmm10_xmm11_xmm1  #  5     0x13  5      OPC=callq_label              
  retq                                            #  6     0x18  1      OPC=retq                     
                                                                                                     
.size target, .-target
