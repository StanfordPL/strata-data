  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                     #  Line  RIP   Bytes  Opcode               
.target:                   #        0     0      OPC=<label>          
  xchgb %ah, %bl           #  1     0     2      OPC=xchgb_r8_rh      
  movq $0x3, %rcx          #  2     0x2   10     OPC=movq_r64_imm64   
  popcntq %rcx, %rsi       #  3     0xc   5      OPC=popcntq_r64_r64  
  callq .read_pf_into_rcx  #  4     0x11  5      OPC=callq_label      
  adcb %ch, %bl            #  5     0x16  2      OPC=adcb_r8_rh       
  retq                     #  6     0x18  1      OPC=retq             
                                                                      
.size target, .-target
