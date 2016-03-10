  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                #  Line  RIP  Bytes  Opcode              
.target:              #        0    0      OPC=<label>         
  cmc                 #  1     0    1      OPC=cmc             
  vmovd %ecx, %xmm4   #  2     0x1  4      OPC=vmovd_xmm_r32   
  vmovd %xmm4, %r10d  #  3     0x5  5      OPC=vmovd_r32_xmm   
  cmovbl %r10d, %ebx  #  4     0xa  4      OPC=cmovbl_r32_r32  
  retq                #  5     0xe  1      OPC=retq            
                                                               
.size target, .-target
