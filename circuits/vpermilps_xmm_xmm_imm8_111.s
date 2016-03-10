  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                             #  Line  RIP   Bytes  Opcode                       
.target:                           #        0     0      OPC=<label>                  
  movsldup %xmm2, %xmm6            #  1     0     4      OPC=movsldup_xmm_xmm         
  vmovshdup %xmm2, %xmm9           #  2     0x4   4      OPC=vmovshdup_xmm_xmm        
  subsd %xmm6, %xmm6               #  3     0x8   4      OPC=subsd_xmm_xmm            
  vpunpckldq %xmm9, %xmm6, %xmm3   #  4     0xc   5      OPC=vpunpckldq_xmm_xmm_xmm   
  vunpckhps %xmm3, %xmm6, %xmm6    #  5     0x11  4      OPC=vunpckhps_xmm_xmm_xmm    
  vpunpckhqdq %xmm6, %xmm9, %xmm1  #  6     0x15  4      OPC=vpunpckhqdq_xmm_xmm_xmm  
  retq                             #  7     0x19  1      OPC=retq                     
                                                                                      
.size target, .-target
