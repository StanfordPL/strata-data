  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                   #  Line  RIP   Bytes  Opcode               
.target:                 #        0     0      OPC=<label>          
  movupd %xmm1, %xmm6    #  1     0     4      OPC=movupd_xmm_xmm   
  movq %xmm6, %xmm3      #  2     0x4   4      OPC=movq_xmm_xmm     
  vmovapd %xmm3, %xmm13  #  3     0x8   4      OPC=vmovapd_xmm_xmm  
  vmovd %xmm13, %ebx     #  4     0xc   4      OPC=vmovd_r32_xmm    
  retq                   #  5     0x10  1      OPC=retq             
                                                                    
.size target, .-target
