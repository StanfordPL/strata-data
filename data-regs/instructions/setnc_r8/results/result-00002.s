  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                #  Line  RIP   Bytes  Opcode              
.target:              #        0     0      OPC=<label>         
  movq $0x0, %rbx     #  1     0     10     OPC=movq_r64_imm64  
  movl %ebx, %r13d    #  2     0xa   3      OPC=movl_r32_r32    
  movzbq %bl, %r11    #  3     0xd   4      OPC=movzbq_r64_r8   
  xchgw %r13w, %r13w  #  4     0x11  4      OPC=xchgw_r16_r16   
  adcq %r11, %r13     #  5     0x15  3      OPC=adcq_r64_r64    
  setna %ah           #  6     0x18  3      OPC=setna_rh        
  xchgb %ah, %bl      #  7     0x1b  2      OPC=xchgb_r8_rh     
  retq                #  8     0x1d  1      OPC=retq            
                                                                
.size target, .-target
