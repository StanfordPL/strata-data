  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                      #  Line  RIP   Bytes  Opcode              
.target:                                    #        0     0      OPC=<label>         
  callq .move_128_032_xmm1_eax_edx_r8d_r9d  #  1     0     5      OPC=callq_label     
  clc                                       #  2     0x5   1      OPC=clc             
  movq $0x0, %rbx                           #  3     0x6   10     OPC=movq_r64_imm64  
  adcl %edx, %ebx                           #  4     0x10  2      OPC=adcl_r32_r32    
  retq                                      #  5     0x12  1      OPC=retq            
                                                                                      
.size target, .-target
