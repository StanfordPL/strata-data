  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                   #  Line  RIP   Bytes  Opcode              
.target:                 #        0     0      OPC=<label>         
  movzbq %bl, %rcx       #  1     0     4      OPC=movzbq_r64_r8   
  movslq %ecx, %rbx      #  2     0x4   3      OPC=movslq_r64_r32  
  shlb $0x1, %bh         #  3     0x7   2      OPC=shlb_rh_one     
  adcb %ch, %bl          #  4     0x9   2      OPC=adcb_r8_rh      
  negw %bx               #  5     0xb   3      OPC=negw_r16        
  adcb %bl, %cl          #  6     0xe   2      OPC=adcb_r8_r8      
  callq .set_szp_for_bl  #  7     0x10  5      OPC=callq_label     
  retq                   #  8     0x15  1      OPC=retq            
                                                                   
.size target, .-target
