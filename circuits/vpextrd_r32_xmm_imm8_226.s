  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                
.target:                                          #        0     0      OPC=<label>           
  callq .move_128_032_xmm1_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label       
  unpckhps %xmm10, %xmm1                          #  2     0x5   4      OPC=unpckhps_xmm_xmm  
  movq $0xe2, %rbx                                #  3     0x9   10     OPC=movq_r64_imm64    
  vmovq %xmm1, %rcx                               #  4     0x13  5      OPC=vmovq_r64_xmm     
  shlw $0x1, %bx                                  #  5     0x18  3      OPC=shlw_r16_one      
  cmovnll %ecx, %ebx                              #  6     0x1b  3      OPC=cmovnll_r32_r32   
  retq                                            #  7     0x1e  1      OPC=retq              
                                                                                              
.size target, .-target
