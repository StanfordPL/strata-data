  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                     #  Line  RIP   Bytes  Opcode              
.target:                   #        0     0      OPC=<label>         
  callq .read_cf_into_rcx  #  1     0     5      OPC=callq_label     
  decw %cx                 #  2     0x5   3      OPC=decw_r16        
  movslq %ecx, %rbp        #  3     0x8   3      OPC=movslq_r64_r32  
  xchgw %bp, %bx           #  4     0xb   3      OPC=xchgw_r16_r16   
  adcw %bp, %bp            #  5     0xe   3      OPC=adcw_r16_r16    
  xchgw %bx, %bp           #  6     0x11  3      OPC=xchgw_r16_r16   
  retq                     #  7     0x14  1      OPC=retq            
                                                                     
.size target, .-target
