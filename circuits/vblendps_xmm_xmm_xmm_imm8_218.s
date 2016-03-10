  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                        
.target:                                          #        0     0      OPC=<label>                   
  callq .move_128_032_xmm2_xmm4_xmm5_xmm6_xmm7    #  1     0     5      OPC=callq_label               
  callq .move_128_032_xmm3_xmm8_xmm9_xmm10_xmm11  #  2     0x5   5      OPC=callq_label               
  vbroadcastss %xmm11, %ymm7                      #  3     0xa   5      OPC=vbroadcastss_ymm_xmm      
  vaddsubpd %xmm11, %xmm5, %xmm5                  #  4     0xf   5      OPC=vaddsubpd_xmm_xmm_xmm     
  vmovaps %xmm9, %xmm1                            #  5     0x14  5      OPC=vmovaps_xmm_xmm           
  vfnmadd132pd %xmm8, %xmm9, %xmm5                #  6     0x19  5      OPC=vfnmadd132pd_xmm_xmm_xmm  
  callq .move_032_128_xmm4_xmm5_xmm6_xmm7_xmm1    #  7     0x1e  5      OPC=callq_label               
  retq                                            #  8     0x23  1      OPC=retq                      
                                                                                                      
.size target, .-target
