  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                            #  Line  RIP  Bytes  Opcode                     
.target:                          #        0    0      OPC=<label>                
  vunpckhps %xmm1, %xmm1, %xmm13  #  1     0    4      OPC=vunpckhps_xmm_xmm_xmm  
  xorq %rbx, %rbx                 #  2     0x4  3      OPC=xorq_r64_r64           
  vmovd %xmm13, %ecx              #  3     0x7  4      OPC=vmovd_r32_xmm          
  addw %cx, %bx                   #  4     0xb  3      OPC=addw_r16_r16           
  retq                            #  5     0xe  1      OPC=retq                   
                                                                                  
.size target, .-target
