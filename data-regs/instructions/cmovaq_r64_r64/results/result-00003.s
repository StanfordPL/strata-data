  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                 #  Line  RIP  Bytes  Opcode                
.target:               #        0    0      OPC=<label>           
  cmovnbeq %rcx, %rbx  #  1     0    4      OPC=cmovnbeq_r64_r64  
  subb %ch, %ch        #  2     0x4  2      OPC=subb_rh_rh        
  cmovzq %rbx, %rbx    #  3     0x6  4      OPC=cmovzq_r64_r64    
  retq                 #  4     0xa  1      OPC=retq              
                                                                  
.size target, .-target
