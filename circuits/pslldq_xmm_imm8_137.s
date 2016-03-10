  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                         #  Line  RIP   Bytes  Opcode                  
.target:                       #        0     0      OPC=<label>             
  vmovq %xmm1, %xmm6           #  1     0     4      OPC=vmovq_xmm_xmm       
  vxorps %xmm6, %xmm1, %xmm3   #  2     0x4   4      OPC=vxorps_xmm_xmm_xmm  
  vmovsd %xmm3, %xmm6, %xmm10  #  3     0x8   4      OPC=vmovsd_xmm_xmm_xmm  
  movapd %xmm10, %xmm1         #  4     0xc   5      OPC=movapd_xmm_xmm      
  retq                         #  5     0x11  1      OPC=retq                
                                                                             
.size target, .-target
