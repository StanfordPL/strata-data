  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                           #  Line  RIP   Bytes  Opcode                     
.target:                         #        0     0      OPC=<label>                
  vmovshdup %xmm1, %xmm7         #  1     0     4      OPC=vmovshdup_xmm_xmm      
  sqrtpd %xmm7, %xmm4            #  2     0x4   4      OPC=sqrtpd_xmm_xmm         
  movq $0x80, %rbx               #  3     0x8   10     OPC=movq_r64_imm64         
  vunpcklps %xmm4, %xmm7, %xmm1  #  4     0x12  4      OPC=vunpcklps_xmm_xmm_xmm  
  movq %xmm1, %rax               #  5     0x16  5      OPC=movq_r64_xmm           
  xaddb %bl, %al                 #  6     0x1b  3      OPC=xaddb_r8_r8            
  retq                           #  7     0x1e  1      OPC=retq                   
                                                                                  
.size target, .-target
