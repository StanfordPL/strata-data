  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                         #  Line  RIP   Bytes  Opcode                  
.target:                       #        0     0      OPC=<label>             
  vxorps %xmm2, %xmm1, %xmm6   #  1     0     4      OPC=vxorps_xmm_xmm_xmm  
  vmovsd %xmm1, %xmm2, %xmm11  #  2     0x4   4      OPC=vmovsd_xmm_xmm_xmm  
  movapd %xmm11, %xmm1         #  3     0x8   5      OPC=movapd_xmm_xmm      
  pmovzxwq %xmm6, %xmm7        #  4     0xd   5      OPC=pmovzxwq_xmm_xmm    
  vpxor %xmm7, %xmm2, %xmm6    #  5     0x12  4      OPC=vpxor_xmm_xmm_xmm   
  movss %xmm6, %xmm1           #  6     0x16  4      OPC=movss_xmm_xmm       
  retq                         #  7     0x1a  1      OPC=retq                
                                                                             
.size target, .-target
