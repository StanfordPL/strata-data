  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                              #  Line  RIP   Bytes  Opcode                    
.target:                            #        0     0      OPC=<label>               
  vmovhlps %xmm1, %xmm1, %xmm14     #  1     0     4      OPC=vmovhlps_xmm_xmm_xmm  
  movq $0xfffffffffffffffa, %rbx    #  2     0x4   10     OPC=movq_r64_imm64        
  salw $0x1, %bx                    #  3     0xe   3      OPC=salw_r16_one          
  pmovzxwq %xmm14, %xmm1            #  4     0x11  6      OPC=pmovzxwq_xmm_xmm      
  callq .move_128_064_xmm1_r10_r11  #  5     0x17  5      OPC=callq_label           
  cmovngq %r11, %rbx                #  6     0x1c  4      OPC=cmovngq_r64_r64       
  retq                              #  7     0x20  1      OPC=retq                  
                                                                                    
.size target, .-target
