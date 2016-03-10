  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                            #  Line  RIP  Bytes  Opcode             
.target:                                          #        0    0      OPC=<label>        
  callq .move_128_032_xmm1_xmm8_xmm9_xmm10_xmm11  #  1     0    5      OPC=callq_label    
  movq %xmm11, %rax                               #  2     0x5  5      OPC=movq_r64_xmm   
  movzbl %al, %ebx                                #  3     0xa  3      OPC=movzbl_r32_r8  
  xorb %ah, %bh                                   #  4     0xd  2      OPC=xorb_rh_rh     
  retq                                            #  5     0xf  1      OPC=retq           
                                                                                          
.size target, .-target
