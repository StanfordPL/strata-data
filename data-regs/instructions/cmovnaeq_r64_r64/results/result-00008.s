  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                              #  Line  RIP   Bytes  Opcode                  
.target:                            #        0     0      OPC=<label>             
  cmovbq %rcx, %rbx                 #  1     0     4      OPC=cmovbq_r64_r64      
  vmovq %rbx, %xmm0                 #  2     0x4   5      OPC=vmovq_xmm_r64       
  vdivsd %xmm0, %xmm0, %xmm1        #  3     0x9   4      OPC=vdivsd_xmm_xmm_xmm  
  callq .move_128_064_xmm1_r10_r11  #  4     0xd   5      OPC=callq_label         
  cmpl %ebx, %r11d                  #  5     0x12  3      OPC=cmpl_r32_r32        
  cmovzq %rbx, %rbx                 #  6     0x15  4      OPC=cmovzq_r64_r64      
  retq                              #  7     0x19  1      OPC=retq                
                                                                                  
.size target, .-target
