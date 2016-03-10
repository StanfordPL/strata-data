  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                               #  Line  RIP   Bytes  Opcode                 
.target:                             #        0     0      OPC=<label>            
  callq .move_128_64_xmm1_xmm8_xmm9  #  1     0     5      OPC=callq_label        
  xorq %rbx, %rbx                    #  2     0x5   3      OPC=xorq_r64_r64       
  vorps %xmm9, %xmm9, %xmm0          #  3     0x8   5      OPC=vorps_xmm_xmm_xmm  
  vmovq %xmm0, %rbp                  #  4     0xd   5      OPC=vmovq_r64_xmm      
  xchgl %ebx, %ebp                   #  5     0x12  2      OPC=xchgl_r32_r32      
  retq                               #  6     0x14  1      OPC=retq               
                                                                                  
.size target, .-target
