  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                            #  Line  RIP   Bytes  Opcode              
.target:                          #        0     0      OPC=<label>         
  movzbw %bl, %ax                 #  1     0     4      OPC=movzbw_r16_r8   
  movq $0xfffffffffffffffe, %rbx  #  2     0x4   10     OPC=movq_r64_imm64  
  negw %ax                        #  3     0xe   3      OPC=negw_r16        
  setno %ah                       #  4     0x11  3      OPC=setno_rh        
  addb %ah, %bh                   #  5     0x14  2      OPC=addb_rh_rh      
  adcb %al, %bl                   #  6     0x16  2      OPC=adcb_r8_r8      
  incb %bl                        #  7     0x18  2      OPC=incb_r8         
  retq                            #  8     0x1a  1      OPC=retq            
                                                                            
.size target, .-target
