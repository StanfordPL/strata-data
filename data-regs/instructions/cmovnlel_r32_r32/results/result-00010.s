  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                    #  Line  RIP   Bytes  Opcode                
.target:                  #        0     0      OPC=<label>           
  vmovd %ebx, %xmm1       #  1     0     4      OPC=vmovd_xmm_r32     
  cmovnel %ecx, %ebx      #  2     0x4   3      OPC=cmovnel_r32_r32   
  movsldup %xmm1, %xmm15  #  3     0x7   5      OPC=movsldup_xmm_xmm  
  vmovd %xmm15, %r8d      #  4     0xc   5      OPC=vmovd_r32_xmm     
  cmovngel %r8d, %ebx     #  5     0x11  4      OPC=cmovngel_r32_r32  
  retq                    #  6     0x15  1      OPC=retq              
                                                                      
.size target, .-target
