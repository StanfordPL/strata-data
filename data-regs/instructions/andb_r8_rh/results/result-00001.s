  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                     #  Line  RIP   Bytes  Opcode             
.target:                   #        0     0      OPC=<label>        
  movsbl %ah, %ebp         #  1     0     3      OPC=movsbl_r32_rh  
  movsbl %bl, %esi         #  2     0x3   3      OPC=movsbl_r32_r8  
  andl %esi, %ebp          #  3     0x6   2      OPC=andl_r32_r32   
  callq .read_cf_into_rbx  #  4     0x8   5      OPC=callq_label    
  adcw %bp, %bx            #  5     0xd   3      OPC=adcw_r16_r16   
  retq                     #  6     0x10  1      OPC=retq           
                                                                    
.size target, .-target
