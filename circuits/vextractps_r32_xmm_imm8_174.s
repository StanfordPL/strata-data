  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                            #  Line  RIP   Bytes  Opcode                 
.target:                          #        0     0      OPC=<label>            
  punpckhdq %xmm1, %xmm1          #  1     0     4      OPC=punpckhdq_xmm_xmm  
  pmovzxdq %xmm1, %xmm2           #  2     0x4   5      OPC=pmovzxdq_xmm_xmm   
  callq .move_128_064_xmm2_r8_r9  #  3     0x9   5      OPC=callq_label        
  movq $0x6, %rbx                 #  4     0xe   10     OPC=movq_r64_imm64     
  xaddl %ebx, %r8d                #  5     0x18  4      OPC=xaddl_r32_r32      
  retq                            #  6     0x1c  1      OPC=retq               
                                                                               
.size target, .-target
