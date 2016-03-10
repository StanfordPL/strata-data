  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                #  Line  RIP   Bytes  Opcode                  
.target:                              #        0     0      OPC=<label>             
  callq .move_128_064_xmm2_r8_r9      #  1     0     5      OPC=callq_label         
  vzeroall                            #  2     0x5   3      OPC=vzeroall            
  movq %r8, %r9                       #  3     0x8   3      OPC=movq_r64_r64        
  callq .move_064_128_r8_r9_xmm1      #  4     0xb   5      OPC=callq_label         
  vsubpd %ymm7, %ymm1, %ymm9          #  5     0x10  4      OPC=vsubpd_ymm_ymm_ymm  
  xorps %xmm9, %xmm8                  #  6     0x14  4      OPC=xorps_xmm_xmm       
  callq .move_128_256_xmm8_xmm9_ymm1  #  7     0x18  5      OPC=callq_label         
  retq                                #  8     0x1d  1      OPC=retq                
                                                                                    
.size target, .-target
