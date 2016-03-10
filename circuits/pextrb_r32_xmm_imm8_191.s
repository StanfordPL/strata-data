  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                
.target:                               #        0     0      OPC=<label>           
  xorl %r8d, %r8d                      #  1     0     3      OPC=xorl_r32_r32      
  callq .move_128_64_xmm1_xmm12_xmm13  #  2     0x3   5      OPC=callq_label       
  movmskpd %xmm12, %rbx                #  3     0x8   5      OPC=movmskpd_r64_xmm  
  callq .move_byte_15_of_ymm1_to_r8b   #  4     0xd   5      OPC=callq_label       
  cmoveq %r8, %rbx                     #  5     0x12  4      OPC=cmoveq_r64_r64    
  retq                                 #  6     0x16  1      OPC=retq              
                                                                                   
.size target, .-target
