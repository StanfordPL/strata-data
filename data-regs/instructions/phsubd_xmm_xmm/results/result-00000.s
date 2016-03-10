  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                     
.target:                                          #        0     0      OPC=<label>                
  movsldup %xmm1, %xmm14                          #  1     0     5      OPC=movsldup_xmm_xmm       
  psubq %xmm1, %xmm14                             #  2     0x5   5      OPC=psubq_xmm_xmm          
  vmaxpd %xmm2, %xmm2, %xmm0                      #  3     0xa   4      OPC=vmaxpd_xmm_xmm_xmm     
  vmovsldup %ymm0, %ymm7                          #  4     0xe   4      OPC=vmovsldup_ymm_ymm      
  vpsubq %xmm0, %xmm7, %xmm3                      #  5     0x12  4      OPC=vpsubq_xmm_xmm_xmm     
  callq .move_128_032_xmm1_xmm8_xmm9_xmm10_xmm11  #  6     0x16  5      OPC=callq_label            
  vcvtsd2ss %xmm10, %xmm14, %xmm5                 #  7     0x1b  5      OPC=vcvtsd2ss_xmm_xmm_xmm  
  vphaddd %ymm3, %ymm5, %ymm9                     #  8     0x20  5      OPC=vphaddd_ymm_ymm_ymm    
  movapd %xmm9, %xmm1                             #  9     0x25  5      OPC=movapd_xmm_xmm         
  retq                                            #  10    0x2a  1      OPC=retq                   
                                                                                                   
.size target, .-target
