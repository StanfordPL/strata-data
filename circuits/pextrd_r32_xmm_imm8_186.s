  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                          #  Line  RIP   Bytes  Opcode                    
.target:                        #        0     0      OPC=<label>               
  vmovhlps %xmm1, %xmm1, %xmm5  #  1     0     4      OPC=vmovhlps_xmm_xmm_xmm  
  movq $0x10, %rbx              #  2     0x4   10     OPC=movq_r64_imm64        
  vmovq %xmm5, %r12             #  3     0xe   5      OPC=vmovq_r64_xmm         
  xchgl %r12d, %ebx             #  4     0x13  3      OPC=xchgl_r32_r32         
  retq                          #  5     0x16  1      OPC=retq                  
                                                                                
.size target, .-target
