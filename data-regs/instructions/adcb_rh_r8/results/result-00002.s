  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                #  Line  RIP   Bytes  Opcode              
.target:              #        0     0      OPC=<label>         
  movsbl %bl, %r13d   #  1     0     4      OPC=movsbl_r32_r8   
  xchgw %r13w, %r13w  #  2     0x4   4      OPC=xchgw_r16_r16   
  movslq %r13d, %rcx  #  3     0x8   3      OPC=movslq_r64_r32  
  movzbw %ah, %bp     #  4     0xb   4      OPC=movzbw_r16_rh   
  adcb %bpl, %cl      #  5     0xf   3      OPC=adcb_r8_r8      
  movb %cl, %ah       #  6     0x12  2      OPC=movb_rh_r8      
  retq                #  7     0x14  1      OPC=retq            
                                                                
.size target, .-target
