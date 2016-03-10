  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                 #  Line  RIP  Bytes  Opcode                
.target:               #        0    0      OPC=<label>           
  cmovnbeq %rcx, %rbx  #  1     0    4      OPC=cmovnbeq_r64_r64  
  cmpb %bh, %ch        #  2     0x4  2      OPC=cmpb_rh_rh        
  cmovnpw %bx, %bx     #  3     0x6  4      OPC=cmovnpw_r16_r16   
  retq                 #  4     0xa  1      OPC=retq              
                                                                  
.size target, .-target
