  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                             #  Line  RIP   Bytes  Opcode                       
.target:                           #        0     0      OPC=<label>                  
  vpunpckhqdq %xmm1, %xmm1, %xmm1  #  1     0     4      OPC=vpunpckhqdq_xmm_xmm_xmm  
  movq $0xfffffffffffffffa, %rbx   #  2     0x4   10     OPC=movq_r64_imm64           
  vmovd %xmm1, %edi                #  3     0xe   4      OPC=vmovd_r32_xmm            
  xchgl %edi, %ebx                 #  4     0x12  2      OPC=xchgl_r32_r32            
  retq                             #  5     0x14  1      OPC=retq                     
                                                                                      
.size target, .-target
