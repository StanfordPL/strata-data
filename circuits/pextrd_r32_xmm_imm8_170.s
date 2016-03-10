  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                 #  Line  RIP   Bytes  Opcode             
.target:                               #        0     0      OPC=<label>        
  callq .move_128_64_xmm1_xmm10_xmm11  #  1     0     5      OPC=callq_label    
  vmovq %xmm11, %rbx                   #  2     0x5   5      OPC=vmovq_r64_xmm  
  vmovd %xmm11, %edi                   #  3     0xa   4      OPC=vmovd_r32_xmm  
  orb %bl, %bh                         #  4     0xe   2      OPC=orb_rh_r8      
  xchgl %ebx, %edi                     #  5     0x10  2      OPC=xchgl_r32_r32  
  retq                                 #  6     0x12  1      OPC=retq           
                                                                                
.size target, .-target
