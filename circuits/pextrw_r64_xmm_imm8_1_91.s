  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                    #  Line  RIP   Bytes  Opcode                 
.target:                  #        0     0      OPC=<label>            
  movshdup %xmm1, %xmm3   #  1     0     4      OPC=movshdup_xmm_xmm   
  vpmovzxwd %xmm3, %xmm4  #  2     0x4   5      OPC=vpmovzxwd_xmm_xmm  
  vmovshdup %xmm4, %xmm4  #  3     0x9   4      OPC=vmovshdup_xmm_xmm  
  vmovd %xmm4, %ebx       #  4     0xd   4      OPC=vmovd_r32_xmm      
  retq                    #  5     0x11  1      OPC=retq               
                                                                       
.size target, .-target
