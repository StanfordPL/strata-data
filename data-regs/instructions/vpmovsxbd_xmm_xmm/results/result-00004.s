  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                   #  Line  RIP   Bytes  Opcode                
.target:                 #        0     0      OPC=<label>           
  vmovd %xmm2, %eax      #  1     0     4      OPC=vmovd_r32_xmm     
  vzeroall               #  2     0x4   3      OPC=vzeroall          
  vmovd %eax, %xmm3      #  3     0x7   4      OPC=vmovd_xmm_r32     
  pmovsxbd %xmm3, %xmm1  #  4     0xb   5      OPC=pmovsxbd_xmm_xmm  
  retq                   #  5     0x10  1      OPC=retq              
                                                                     
.size target, .-target
