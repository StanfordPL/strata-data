  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                     
.target:                                        #        0     0      OPC=<label>                
  callq .move_128_032_xmm2_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label            
  callq .move_128_64_xmm3_xmm12_xmm13           #  2     0x5   5      OPC=callq_label            
  vcvtsd2ss %xmm2, %xmm13, %xmm12               #  3     0xa   4      OPC=vcvtsd2ss_xmm_xmm_xmm  
  movsldup %xmm13, %xmm14                       #  4     0xe   5      OPC=movsldup_xmm_xmm       
  vmovss %xmm6, %xmm14, %xmm1                   #  5     0x13  4      OPC=vmovss_xmm_xmm_xmm     
  movss %xmm7, %xmm12                           #  6     0x17  5      OPC=movss_xmm_xmm          
  punpcklqdq %xmm12, %xmm1                      #  7     0x1c  5      OPC=punpcklqdq_xmm_xmm     
  retq                                          #  8     0x21  1      OPC=retq                   
                                                                                                 
.size target, .-target
