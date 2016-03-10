  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                 
.target:                                #        0     0      OPC=<label>            
  callq .move_128_064_xmm2_r8_r9        #  1     0     5      OPC=callq_label        
  vzeroall                              #  2     0x5   3      OPC=vzeroall           
  orq %r9, %r9                          #  3     0x8   3      OPC=orq_r64_r64        
  callq .move_064_128_r8_r9_xmm3        #  4     0xb   5      OPC=callq_label        
  vmovupd %xmm3, %xmm11                 #  5     0x10  4      OPC=vmovupd_xmm_xmm    
  vorps %ymm5, %ymm5, %ymm10            #  6     0x14  4      OPC=vorps_ymm_ymm_ymm  
  callq .move_128_256_xmm10_xmm11_ymm1  #  7     0x18  5      OPC=callq_label        
  retq                                  #  8     0x1d  1      OPC=retq               
                                                                                     
.size target, .-target
