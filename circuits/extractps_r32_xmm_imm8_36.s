  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                            #  Line  RIP  Bytes  Opcode             
.target:                          #        0    0      OPC=<label>        
  callq .move_128_064_xmm1_r8_r9  #  1     0    5      OPC=callq_label    
  movsbq %r8b, %rbx               #  2     0x5  4      OPC=movsbq_r64_r8  
  movd %xmm1, %eax                #  3     0x9  4      OPC=movd_r32_xmm   
  xchgl %ebx, %eax                #  4     0xd  1      OPC=xchgl_eax_r32  
  retq                            #  5     0xe  1      OPC=retq           
                                                                          
.size target, .-target
