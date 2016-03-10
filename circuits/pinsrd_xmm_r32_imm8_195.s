  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                             #  Line  RIP   Bytes  Opcode                      
.target:                           #        0     0      OPC=<label>                 
  vmovd %ebx, %xmm5                #  1     0     4      OPC=vmovd_xmm_r32           
  movsldup %xmm1, %xmm0            #  2     0x4   4      OPC=movsldup_xmm_xmm        
  vbroadcastss %xmm5, %xmm11       #  3     0x8   5      OPC=vbroadcastss_xmm_xmm    
  vpunpckhdq %xmm11, %xmm0, %xmm5  #  4     0xd   5      OPC=vpunpckhdq_xmm_xmm_xmm  
  vmovddup %ymm5, %ymm7            #  5     0x12  4      OPC=vmovddup_ymm_ymm        
  punpcklqdq %xmm7, %xmm1          #  6     0x16  4      OPC=punpcklqdq_xmm_xmm      
  retq                             #  7     0x1a  1      OPC=retq                    
                                                                                     
.size target, .-target
