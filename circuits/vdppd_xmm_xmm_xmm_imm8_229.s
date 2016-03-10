  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                       
.target:                                          #        0     0      OPC=<label>                  
  callq .move_128_032_xmm3_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label              
  callq .move_128_256_xmm8_xmm9_ymm1              #  2     0x5   5      OPC=callq_label              
  vmulpd %xmm10, %xmm10, %xmm5                    #  3     0xa   5      OPC=vmulpd_xmm_xmm_xmm       
  callq .move_128_64_xmm3_xmm12_xmm13             #  4     0xf   5      OPC=callq_label              
  vunpckhpd %xmm13, %xmm2, %xmm6                  #  5     0x14  5      OPC=vunpckhpd_xmm_xmm_xmm    
  mulpd %xmm13, %xmm6                             #  6     0x19  5      OPC=mulpd_xmm_xmm            
  vfmadd132pd %xmm5, %xmm6, %xmm1                 #  7     0x1e  5      OPC=vfmadd132pd_xmm_xmm_xmm  
  retq                                            #  8     0x23  1      OPC=retq                     
                                                                                                     
.size target, .-target
