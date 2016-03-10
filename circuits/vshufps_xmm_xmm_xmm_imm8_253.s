  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                             #  Line  RIP   Bytes  Opcode                       
.target:                           #        0     0      OPC=<label>                  
  vmovshdup %xmm3, %xmm1           #  1     0     4      OPC=vmovshdup_xmm_xmm        
  movshdup %xmm2, %xmm3            #  2     0x4   4      OPC=movshdup_xmm_xmm         
  vpunpckhqdq %xmm1, %xmm2, %xmm9  #  3     0x8   4      OPC=vpunpckhqdq_xmm_xmm_xmm  
  vmovss %xmm3, %xmm9, %xmm1       #  4     0xc   4      OPC=vmovss_xmm_xmm_xmm       
  retq                             #  5     0x10  1      OPC=retq                     
                                                                                      
.size target, .-target
