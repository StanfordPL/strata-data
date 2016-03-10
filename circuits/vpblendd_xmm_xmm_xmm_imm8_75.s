  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                       
.target:                                        #        0     0      OPC=<label>                  
  movsldup %xmm2, %xmm1                         #  1     0     4      OPC=movsldup_xmm_xmm         
  vmovaps %xmm3, %xmm11                         #  2     0x4   4      OPC=vmovaps_xmm_xmm          
  punpckhdq %xmm11, %xmm1                       #  3     0x8   5      OPC=punpckhdq_xmm_xmm        
  callq .move_128_032_xmm2_xmm4_xmm5_xmm6_xmm7  #  4     0xd   5      OPC=callq_label              
  vpunpckhqdq %xmm1, %xmm1, %xmm13              #  5     0x12  4      OPC=vpunpckhqdq_xmm_xmm_xmm  
  vmovsd %xmm11, %xmm6, %xmm12                  #  6     0x16  5      OPC=vmovsd_xmm_xmm_xmm       
  vmovaps %xmm12, %xmm12                        #  7     0x1b  5      OPC=vmovaps_xmm_xmm          
  vaddsubpd %xmm12, %xmm6, %xmm1                #  8     0x20  5      OPC=vaddsubpd_xmm_xmm_xmm    
  callq .move_64_128_xmm12_xmm13_xmm1           #  9     0x25  5      OPC=callq_label              
  retq                                          #  10    0x2a  1      OPC=retq                     
                                                                                                   
.size target, .-target
