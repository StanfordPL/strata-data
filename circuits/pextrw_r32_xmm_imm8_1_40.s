  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                       #  Line  RIP   Bytes  Opcode                    
.target:                     #        0     0      OPC=<label>               
  movq $0x40, %rbx           #  1     0     10     OPC=movq_r64_imm64        
  subb %bl, %bl              #  2     0xa   2      OPC=subb_r8_r8            
  vpbroadcastq %xmm1, %xmm4  #  3     0xc   5      OPC=vpbroadcastq_xmm_xmm  
  movq %xmm4, %r14           #  4     0x11  5      OPC=movq_r64_xmm          
  adcw %r14w, %bx            #  5     0x16  4      OPC=adcw_r16_r16          
  retq                       #  6     0x1a  1      OPC=retq                  
                                                                             
.size target, .-target
