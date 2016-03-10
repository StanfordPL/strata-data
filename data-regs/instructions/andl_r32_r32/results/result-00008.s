  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                   #  Line  RIP   Bytes  Opcode                 
.target:                 #        0     0      OPC=<label>            
  vmovd %ecx, %xmm1      #  1     0     4      OPC=vmovd_xmm_r32      
  vmovd %ebx, %xmm6      #  2     0x4   4      OPC=vmovd_xmm_r32      
  cvtsd2sil %xmm1, %ebx  #  3     0x8   4      OPC=cvtsd2sil_r32_xmm  
  vmovd %ecx, %xmm3      #  4     0xc   4      OPC=vmovd_xmm_r32      
  pand %xmm3, %xmm6      #  5     0x10  4      OPC=pand_xmm_xmm       
  vmovq %xmm6, %rcx      #  6     0x14  5      OPC=vmovq_r64_xmm      
  xaddl %ebx, %ecx       #  7     0x19  3      OPC=xaddl_r32_r32      
  retq                   #  8     0x1c  1      OPC=retq               
                                                                      
.size target, .-target
