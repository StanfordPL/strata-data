  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                 
.target:                               #        0     0      OPC=<label>            
  incq %rax                            #  1     0     3      OPC=incq_r64           
  vpxor %xmm8, %xmm8, %xmm1            #  2     0x3   5      OPC=vpxor_xmm_xmm_xmm  
  callq .move_128_64_xmm1_xmm10_xmm11  #  3     0x8   5      OPC=callq_label        
  movq %xmm10, %rdx                    #  4     0xd   5      OPC=movq_r64_xmm       
  setle %dl                            #  5     0x12  3      OPC=setle_r8           
  negq %rdx                            #  6     0x15  3      OPC=negq_r64           
  retq                                 #  7     0x18  1      OPC=retq               
                                                                                    
.size target, .-target
