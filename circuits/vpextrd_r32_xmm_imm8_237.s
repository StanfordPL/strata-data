  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                 
.target:                                        #        0     0      OPC=<label>            
  vmovshdup %xmm1, %xmm9                        #  1     0     4      OPC=vmovshdup_xmm_xmm  
  movq $0x40, %rbx                              #  2     0x4   10     OPC=movq_r64_imm64     
  vmovups %xmm9, %xmm1                          #  3     0xe   5      OPC=vmovups_xmm_xmm    
  callq .move_128_032_xmm1_r10d_r11d_r12d_r13d  #  4     0x13  5      OPC=callq_label        
  xaddl %ebx, %r10d                             #  5     0x18  4      OPC=xaddl_r32_r32      
  retq                                          #  6     0x1c  1      OPC=retq               
                                                                                             
.size target, .-target
