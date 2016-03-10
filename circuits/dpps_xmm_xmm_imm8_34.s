  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                     
.target:                                        #        0     0      OPC=<label>                
  callq .move_128_032_xmm1_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label            
  vmovupd %xmm6, %xmm10                         #  2     0x5   4      OPC=vmovupd_xmm_xmm        
  vmulps %xmm2, %xmm1, %xmm9                    #  3     0x9   4      OPC=vmulps_xmm_xmm_xmm     
  vaddps %xmm9, %xmm10, %xmm2                   #  4     0xd   5      OPC=vaddps_xmm_xmm_xmm     
  callq .move_256_128_ymm2_xmm8_xmm9            #  5     0x12  5      OPC=callq_label            
  vcvtsd2ss %xmm10, %xmm2, %xmm8                #  6     0x17  5      OPC=vcvtsd2ss_xmm_xmm_xmm  
  callq .move_64_128_xmm8_xmm9_xmm1             #  7     0x1c  5      OPC=callq_label            
  retq                                          #  8     0x21  1      OPC=retq                   
                                                                                                 
.size target, .-target
