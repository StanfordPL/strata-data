  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                               #  Line  RIP   Bytes  Opcode                
.target:                             #        0     0      OPC=<label>           
  movq $0xfffffffffffffffe, %rdx     #  1     0     10     OPC=movq_r64_imm64    
  callq .move_032_016_edx_r12w_r13w  #  2     0xa   5      OPC=callq_label       
  movsbl %r13b, %esi                 #  3     0xf   4      OPC=movsbl_r32_r8     
  movd %esi, %xmm3                   #  4     0x13  4      OPC=movd_xmm_r32      
  vpor %xmm2, %xmm3, %xmm1           #  5     0x17  4      OPC=vpor_xmm_xmm_xmm  
  retq                               #  6     0x1b  1      OPC=retq              
                                                                                 
.size target, .-target
