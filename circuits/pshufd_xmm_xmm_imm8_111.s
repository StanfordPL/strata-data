  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                    
.target:                               #        0     0      OPC=<label>               
  callq .move_128_64_xmm2_xmm10_xmm11  #  1     0     5      OPC=callq_label           
  vmovss %xmm11, %xmm2, %xmm7          #  2     0x5   5      OPC=vmovss_xmm_xmm_xmm    
  movshdup %xmm11, %xmm0               #  3     0xa   5      OPC=movshdup_xmm_xmm      
  vmovlhps %xmm7, %xmm0, %xmm12        #  4     0xf   4      OPC=vmovlhps_xmm_xmm_xmm  
  movaps %xmm12, %xmm1                 #  5     0x13  4      OPC=movaps_xmm_xmm        
  retq                                 #  6     0x17  1      OPC=retq                  
                                                                                       
.size target, .-target
