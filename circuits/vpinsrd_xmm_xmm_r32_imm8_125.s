  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                             #  Line  RIP   Bytes  Opcode                     
.target:                           #        0     0      OPC=<label>                
  vbroadcastss %xmm2, %xmm10       #  1     0     5      OPC=vbroadcastss_xmm_xmm   
  xchgw %bx, %bx                   #  2     0x5   3      OPC=xchgw_r16_r16          
  vmovd %ebx, %xmm1                #  3     0x8   4      OPC=vmovd_xmm_r32          
  vunpcklps %ymm1, %ymm10, %ymm15  #  4     0xc   4      OPC=vunpcklps_ymm_ymm_ymm  
  vmovss %xmm10, %xmm2, %xmm1      #  5     0x10  5      OPC=vmovss_xmm_xmm_xmm     
  movsd %xmm15, %xmm1              #  6     0x15  5      OPC=movsd_xmm_xmm          
  retq                             #  7     0x1a  1      OPC=retq                   
                                                                                    
.size target, .-target
