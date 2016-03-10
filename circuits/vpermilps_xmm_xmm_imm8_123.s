  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                               #  Line  RIP   Bytes  Opcode                      
.target:                             #        0     0      OPC=<label>                 
  callq .move_128_64_xmm2_xmm8_xmm9  #  1     0     5      OPC=callq_label             
  vpunpckldq %xmm2, %xmm9, %xmm4     #  2     0x5   4      OPC=vpunpckldq_xmm_xmm_xmm  
  vunpckhps %xmm2, %xmm4, %xmm9      #  3     0x9   4      OPC=vunpckhps_xmm_xmm_xmm   
  vmovsd %xmm9, %xmm4, %xmm13        #  4     0xd   5      OPC=vmovsd_xmm_xmm_xmm      
  cvtsd2ss %xmm13, %xmm4             #  5     0x12  5      OPC=cvtsd2ss_xmm_xmm        
  vmovsd %xmm13, %xmm4, %xmm1        #  6     0x17  5      OPC=vmovsd_xmm_xmm_xmm      
  retq                               #  7     0x1c  1      OPC=retq                    
                                                                                       
.size target, .-target
