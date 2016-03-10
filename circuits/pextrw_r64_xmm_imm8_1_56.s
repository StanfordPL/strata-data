  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                        #  Line  RIP   Bytes  Opcode                    
.target:                      #        0     0      OPC=<label>               
  vpbroadcastq %xmm1, %xmm10  #  1     0     5      OPC=vpbroadcastq_xmm_xmm  
  vmovd %xmm10, %edi          #  2     0x5   4      OPC=vmovd_r32_xmm         
  movq $0x6, %rbx             #  3     0x9   10     OPC=movq_r64_imm64        
  blsrl %ebx, %ebx            #  4     0x13  5      OPC=blsrl_r32_r32         
  cmovnew %di, %bx            #  5     0x18  4      OPC=cmovnew_r16_r16       
  retq                        #  6     0x1c  1      OPC=retq                  
                                                                              
.size target, .-target
