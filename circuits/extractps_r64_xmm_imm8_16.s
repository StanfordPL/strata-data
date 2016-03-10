  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                          #  Line  RIP   Bytes  Opcode                    
.target:                        #        0     0      OPC=<label>               
  vmovlhps %xmm1, %xmm1, %xmm5  #  1     0     4      OPC=vmovlhps_xmm_xmm_xmm  
  movq $0x0, %rbx               #  2     0x4   10     OPC=movq_r64_imm64        
  vmovd %xmm5, %eax             #  3     0xe   4      OPC=vmovd_r32_xmm         
  xchgl %eax, %ebx              #  4     0x12  1      OPC=xchgl_r32_eax         
  retq                          #  5     0x13  1      OPC=retq                  
                                                                                
.size target, .-target
