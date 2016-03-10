  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                      
.target:                               #        0     0      OPC=<label>                 
  vmovd %ebx, %xmm1                    #  1     0     4      OPC=vmovd_xmm_r32           
  callq .move_128_64_xmm2_xmm10_xmm11  #  2     0x4   5      OPC=callq_label             
  vbroadcastss %xmm1, %xmm4            #  3     0x9   5      OPC=vbroadcastss_xmm_xmm    
  vpunpckhdq %xmm2, %xmm4, %xmm0       #  4     0xe   4      OPC=vpunpckhdq_xmm_xmm_xmm  
  vmovsd %xmm10, %xmm0, %xmm1          #  5     0x12  5      OPC=vmovsd_xmm_xmm_xmm      
  retq                                 #  6     0x17  1      OPC=retq                    
                                                                                         
.size target, .-target
